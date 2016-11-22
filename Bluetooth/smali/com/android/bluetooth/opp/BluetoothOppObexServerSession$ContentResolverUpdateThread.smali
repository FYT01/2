.class Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
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

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cntUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 182
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 183
    const-string/jumbo v0, "BtOpp Server ContentResolverUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 180
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 184
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    .line 185
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    .line 186
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 182
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 223
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 221
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 194
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Is ContentResolverUpdateThread Interrupted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->isInterrupted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    if-nez v2, :cond_4

    .line 198
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "current_bytes"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    if-eqz v2, :cond_2

    .line 204
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BtOppObexServer"

    const-string/jumbo v3, "ContentResolverUpdateThread was interrupted before sleep !, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    return-void

    .line 210
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BtOppObexServer"

    const-string/jumbo v3, "Server ContentResolverUpdateThread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 215
    return-void

    .line 190
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    .end local v1    # "updateValues":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method
