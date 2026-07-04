#pragma once

#include <initializer_list>
#include <utility>
#include <vector>

namespace android {

template <typename T, size_t InlineCapacity = 0>
class FatVector {
public:
    using value_type = T;
    using iterator = typename std::vector<T>::iterator;
    using const_iterator = typename std::vector<T>::const_iterator;
    using reverse_iterator = typename std::vector<T>::reverse_iterator;
    using const_reverse_iterator = typename std::vector<T>::const_reverse_iterator;

    FatVector() = default;
    explicit FatVector(size_t size) : mStorage(size) {}
    FatVector(std::initializer_list<T> init) : mStorage(init) {}

    size_t size() const { return mStorage.size(); }
    bool empty() const { return mStorage.empty(); }
    size_t capacity() const { return mStorage.capacity(); }

    T* data() { return mStorage.data(); }
    const T* data() const { return mStorage.data(); }

    T& operator[](size_t index) { return mStorage[index]; }
    const T& operator[](size_t index) const { return mStorage[index]; }

    T& front() { return mStorage.front(); }
    const T& front() const { return mStorage.front(); }
    T& back() { return mStorage.back(); }
    const T& back() const { return mStorage.back(); }

    iterator begin() { return mStorage.begin(); }
    const_iterator begin() const { return mStorage.begin(); }
    iterator end() { return mStorage.end(); }
    const_iterator end() const { return mStorage.end(); }
    reverse_iterator rbegin() { return mStorage.rbegin(); }
    const_reverse_iterator rbegin() const { return mStorage.rbegin(); }
    reverse_iterator rend() { return mStorage.rend(); }
    const_reverse_iterator rend() const { return mStorage.rend(); }

    void clear() { mStorage.clear(); }
    void reserve(size_t size) { mStorage.reserve(size); }
    void resize(size_t size) { mStorage.resize(size); }
    void shrink_to_fit() { mStorage.shrink_to_fit(); }

    void push_back(const T& value) { mStorage.push_back(value); }
    void push_back(T&& value) { mStorage.push_back(std::move(value)); }
    void pop_back() { mStorage.pop_back(); }

    template <typename... Args>
    T& emplace_back(Args&&... args) {
        return mStorage.emplace_back(std::forward<Args>(args)...);
    }

    iterator erase(const_iterator pos) { return mStorage.erase(pos); }

private:
    std::vector<T> mStorage;
};

}  // namespace android
