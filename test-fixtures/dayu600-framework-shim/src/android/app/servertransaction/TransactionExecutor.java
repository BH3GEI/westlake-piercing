package android.app.servertransaction;

import android.app.ClientTransactionHandler;

public class TransactionExecutor {
    private final ClientTransactionHandler mHandler;

    public TransactionExecutor(ClientTransactionHandler handler) {
        mHandler = handler;
    }

    public void execute(ClientTransaction transaction) {
    }
}
