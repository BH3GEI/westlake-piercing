package android.preference;

public class PreferenceManager {
    private static final android.content.SharedPreferences DEFAULT_PREFS = new MemoryPrefs();

    public static android.content.SharedPreferences getDefaultSharedPreferences(
            android.content.Context context) {
        return DEFAULT_PREFS;
    }

    public static void setDefaultValues(android.content.Context context, int resId, boolean readAgain) {
        android.app.Activity.westlakeFindViewStatus = 31;
    }

    private static final class MemoryPrefs implements android.content.SharedPreferences {
        private Object keyOrientation = "1";
        private Object isCueTipShown = Boolean.TRUE;
        private Object keyAnimation = Boolean.TRUE;
        private Object keyAnimationSpeed = Integer.valueOf(50);
        private Object keySound = Boolean.FALSE;
        private Object keyGameEnding = Integer.valueOf(-1);
        private Object keyGameEndingUpdated = Boolean.FALSE;
        private Object keyNewGameEnding = "32768";
        private Object gameOver = Boolean.FALSE;
        private Object won = Boolean.FALSE;
        private Object highScore = Integer.valueOf(-1);
        private Object score = Integer.valueOf(-1);
        private Object grid = "";
        private Object mansur = "";
        private Object rahul = "";
        private Object daya = "";
        private Object undoGrids = "";
        private Object undosLeft = "";

        MemoryPrefs() {
        }

        public java.util.Map<String, ?> getAll() {
            return null;
        }

        public String getString(String key, String defValue) {
            Object value = valueFor(key);
            if (value instanceof String) {
                return (String) value;
            }
            if ("key_orientation".equals(key)) {
                return "1";
            }
            return defValue != null ? defValue : "";
        }

        public java.util.Set<String> getStringSet(String key, java.util.Set<String> defValues) {
            Object value = valueFor(key);
            return value instanceof java.util.Set ? (java.util.Set<String>) value : defValues;
        }

        public int getInt(String key, int defValue) {
            Object value = valueFor(key);
            return value instanceof Integer ? ((Integer) value).intValue() : defValue;
        }

        public long getLong(String key, long defValue) {
            Object value = valueFor(key);
            return value instanceof Long ? ((Long) value).longValue() : defValue;
        }

        public float getFloat(String key, float defValue) {
            Object value = valueFor(key);
            return value instanceof Float ? ((Float) value).floatValue() : defValue;
        }

        public boolean getBoolean(String key, boolean defValue) {
            Object value = valueFor(key);
            return value instanceof Boolean ? ((Boolean) value).booleanValue() : defValue;
        }

        public boolean contains(String key) {
            return valueFor(key) != null;
        }

        public android.content.SharedPreferences.Editor edit() {
            return new MemoryEditor(this);
        }

        public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
        }

        public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
        }

        private Object valueFor(String key) {
            if (key == null) {
                return null;
            }
            if ("key_orientation".equals(key)) return keyOrientation;
            if ("isCueTipShown".equals(key)) return isCueTipShown;
            if ("key_animation".equals(key)) return keyAnimation;
            if ("key_animation_speed".equals(key)) return keyAnimationSpeed;
            if ("key_sound".equals(key)) return keySound;
            if ("key_game_ending".equals(key)) return keyGameEnding;
            if ("key_game_ending_updated".equals(key)) return keyGameEndingUpdated;
            if ("key_new_game_ending".equals(key)) return keyNewGameEnding;
            if ("gameOver".equals(key)) return gameOver;
            if ("won".equals(key)) return won;
            if ("highScore".equals(key)) return highScore;
            if ("score".equals(key)) return score;
            if ("grid".equals(key)) return grid;
            if ("mansur".equals(key)) return mansur;
            if ("rahul".equals(key)) return rahul;
            if ("daya".equals(key)) return daya;
            if ("undoGrids".equals(key)) return undoGrids;
            if ("undosLeft".equals(key)) return undosLeft;
            return null;
        }

        private void setValue(String key, Object value) {
            if (key == null) {
                return;
            }
            if ("key_orientation".equals(key)) { keyOrientation = value; return; }
            if ("isCueTipShown".equals(key)) { isCueTipShown = value; return; }
            if ("key_animation".equals(key)) { keyAnimation = value; return; }
            if ("key_animation_speed".equals(key)) { keyAnimationSpeed = value; return; }
            if ("key_sound".equals(key)) { keySound = value; return; }
            if ("key_game_ending".equals(key)) { keyGameEnding = value; return; }
            if ("key_game_ending_updated".equals(key)) { keyGameEndingUpdated = value; return; }
            if ("key_new_game_ending".equals(key)) { keyNewGameEnding = value; return; }
            if ("gameOver".equals(key)) { gameOver = value; return; }
            if ("won".equals(key)) { won = value; return; }
            if ("highScore".equals(key)) { highScore = value; return; }
            if ("score".equals(key)) { score = value; return; }
            if ("grid".equals(key)) { grid = value; return; }
            if ("mansur".equals(key)) { mansur = value; return; }
            if ("rahul".equals(key)) { rahul = value; return; }
            if ("daya".equals(key)) { daya = value; return; }
            if ("undoGrids".equals(key)) { undoGrids = value; return; }
            if ("undosLeft".equals(key)) { undosLeft = value; }
        }

        private void removeKey(String key) {
            setValue(key, null);
        }

        private void clearAll() {
            keyOrientation = null;
            isCueTipShown = null;
            keyAnimation = null;
            keyAnimationSpeed = null;
            keySound = null;
            keyGameEnding = null;
            keyGameEndingUpdated = null;
            keyNewGameEnding = null;
            gameOver = null;
            won = null;
            highScore = null;
            score = null;
            grid = null;
            mansur = null;
            rahul = null;
            daya = null;
            undoGrids = null;
            undosLeft = null;
        }
    }

    private static final class MemoryEditor implements android.content.SharedPreferences.Editor {
        private final MemoryPrefs prefs;

        MemoryEditor(MemoryPrefs prefs) {
            this.prefs = prefs;
        }

        public android.content.SharedPreferences.Editor putString(String key, String value) {
            prefs.setValue(key, value);
            return this;
        }

        public android.content.SharedPreferences.Editor putStringSet(
                String key, java.util.Set<String> valuesSet) {
            prefs.setValue(key, valuesSet);
            return this;
        }

        public android.content.SharedPreferences.Editor putInt(String key, int value) {
            prefs.setValue(key, Integer.valueOf(value));
            return this;
        }

        public android.content.SharedPreferences.Editor putLong(String key, long value) {
            prefs.setValue(key, Long.valueOf(value));
            return this;
        }

        public android.content.SharedPreferences.Editor putFloat(String key, float value) {
            prefs.setValue(key, Float.valueOf(value));
            return this;
        }

        public android.content.SharedPreferences.Editor putBoolean(String key, boolean value) {
            prefs.setValue(key, Boolean.valueOf(value));
            return this;
        }

        public android.content.SharedPreferences.Editor remove(String key) {
            prefs.removeKey(key);
            return this;
        }

        public android.content.SharedPreferences.Editor clear() {
            prefs.clearAll();
            return this;
        }

        public boolean commit() {
            return true;
        }

        public void apply() {
        }
    }
}
