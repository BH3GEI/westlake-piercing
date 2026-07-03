 
    // ==================== Utility ====================
 
    @SuppressWarnings("unchecked")
    private <T> T findInArgs(Object[] args, Class<T> clazz) {
        if (args == null) return null;
        for (Object arg : args) {
            if (clazz.isInstance(arg)) return (T) arg;
        }
        return null;
    }
 
    private Object getDefaultReturn(Method method) {
        Class<?> type = method.getReturnType();
        if (type == void.class) return null;
        if (type == boolean.class) return false;
        if (type == int.class) return 0;
        if (type == long.class) return 0L;
        if (type == float.class) return 0.0f;
        if (type == double.class) return 0.0;
        return null;
    }
 
    private void logBridged(String method, String target) {
        Log.d(TAG, "[BRIDGED] " + method + " " + target);
