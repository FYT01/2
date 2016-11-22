.class Lcom/android/bluetooth/sap/SapServer$1;
.super Landroid/content/BroadcastReceiver;
.source "SapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapServer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/sap/SapServer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_PHONE_STATE_CHANGED intent received in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapServer;->-get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    const-string/jumbo v5, "PhoneState: "

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapServer;->-get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_1

    .line 137
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "state":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 139
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "sending RIL.ACTION_RIL_RECONNECT_OFF_REQ intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v1, v6}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 142
    .local v1, "fakeConReq":Lcom/android/bluetooth/sap/SapMessage;
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapServer;->-get0(Lcom/android/bluetooth/sap/SapServer;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    .line 143
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3, v1}, Lcom/android/bluetooth/sap/SapServer;->-wrap0(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 130
    .end local v1    # "fakeConReq":Lcom/android/bluetooth/sap/SapMessage;
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    const-string/jumbo v3, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "disconnectType":I
    const-string/jumbo v3, "SapServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " - Received SAP_DISCONNECT_ACTION type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 v3, 0x101

    if-ne v0, v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapServer;->-wrap2(Lcom/android/bluetooth/sap/SapServer;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapServer;->-get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v3, v4, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapServer;->-get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v3, v4, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer$1;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {v3, v0}, Lcom/android/bluetooth/sap/SapServer;->-wrap1(Lcom/android/bluetooth/sap/SapServer;I)V

    goto :goto_0

    .line 161
    .end local v0    # "disconnectType":I
    :cond_4
    const-string/jumbo v3, "SapServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RIL-BT received unexpected Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
