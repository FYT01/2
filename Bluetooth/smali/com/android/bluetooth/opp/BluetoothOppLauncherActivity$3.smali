.class Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;
.super Ljava/lang/Object;
.source "BluetoothOppLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
    .param p2, "val$mimeType"    # Ljava/lang/String;

    .prologue
    .line 155
    .local p3, "val$uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$uris:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$uris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 156
    return-void
.end method
