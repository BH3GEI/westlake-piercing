// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__IActivityManagerBridge.java@913.html
// title: p1613 adapted-hanbing-java/adapter/client/IActivityManagerBridge.java:913

  901:  
  902:     // ==================== Utility ====================
  903:  
  904:     @SuppressWarnings("unchecked")
  905:     private <T> T findInArgs(Object[] args, Class<T> clazz) {
  906:         if (args == null) return null;
  907:         for (Object arg : args) {
  908:             if (clazz.isInstance(arg)) return (T) arg;
  909:         }
  910:         return null;
  911:     }
  912:  
  913:     private Object getDefaultReturn(Method method) {
  914:         Class<?> type = method.getReturnType();
  915:         if (type == void.class) return null;
  916:         if (type == boolean.class) return false;
  917:         if (type == int.class) return 0;
  918:         if (type == long.class) return 0L;
  919:         if (type == float.class) return 0.0f;
  920:         if (type == double.class) return 0.0;
  921:         return null;
  922:     }
  923:  
  924:     private void logBridged(String method, String target) {
  925:         Log.d(TAG, "[BRIDGED] " + method + " " + target);
