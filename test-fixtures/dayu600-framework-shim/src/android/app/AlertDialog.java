package android.app;

public class AlertDialog extends Dialog {
    public void setMessage(CharSequence message) {
    }

    public static class Builder {
        public Builder(android.content.Context context) {
            Activity.westlakeFindViewStatus = 80;
        }

        public Builder setPositiveButton(int textId, android.content.DialogInterface.OnClickListener listener) {
            Activity.westlakeFindViewStatus = 81;
            return this;
        }

        public Builder setNegativeButton(int textId, android.content.DialogInterface.OnClickListener listener) {
            Activity.westlakeFindViewStatus = 82;
            return this;
        }

        public Builder setNeutralButton(int textId, android.content.DialogInterface.OnClickListener listener) {
            Activity.westlakeFindViewStatus = 83;
            return this;
        }

        public Builder setTitle(int titleId) {
            return this;
        }

        public Builder setMessage(int messageId) {
            return this;
        }

        public AlertDialog create() {
            Activity.westlakeFindViewStatus = 84;
            return new AlertDialog();
        }

        public AlertDialog show() {
            return create();
        }
    }
}
