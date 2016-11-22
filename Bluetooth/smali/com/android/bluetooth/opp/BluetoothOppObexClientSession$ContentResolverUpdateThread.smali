.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolverUpdateThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x3e8


# instance fields
.field private contentUri:Landroid/net/Uri;

.field private volatile interrupted:Z

.field private mContext1:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cntUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 134
    const-string/jumbo v0, "BtOpp ContentResolverUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 131
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 135
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    .line 137
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 133
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 174
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 172
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 147
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Is ContentResolverUpdateThread Interrupted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->isInterrupted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    if-nez v2, :cond_4

    .line 150
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "current_bytes"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    if-eqz v2, :cond_2

    .line 157
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v3, "ContentResolverUpdateThread was interrupted before sleep !, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return-void

    .line 162
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v3, "ContentResolverUpdateThread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 166
    return-void

    .line 142
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    .end local v1    # "updateValues":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method
