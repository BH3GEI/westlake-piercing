     *
     * @return missionName.
     */
    std::string GetMissionName() const;
 
    /**
     * @brief Get the top Ability Record (stack top).
     * For single-ability missions (OH native), returns the only ability.
     * For multi-ability missions (Android adapted), returns the stack top.
     *
     * @return MissionAbilityRecordPtr
     */
    MissionAbilityRecordPtr GetAbilityRecord() const;
 
    /**
     * @brief Get the mission id
     *
     * @return the mission id
     */
    int32_t GetMissionId() const;
 
    /**
     * @brief Set the Locked State
     *
     * @param lockedState true/false
