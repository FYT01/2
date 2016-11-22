.class Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MnsSdpSearchInfo"
.end annotation


# instance fields
.field private isSearchInProgress:Z

.field lastMasId:I

.field lastNotificationStatus:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "isSearchON"    # Z
    .param p3, "masId"    # I
    .param p4, "notification"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    .line 104
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    .line 105
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastNotificationStatus:I

    .line 102
    return-void
.end method


# virtual methods
.method public getIsSearchProgress()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    return v0
.end method

.method public setIsSearchProgress(Z)V
    .locals 0
    .param p1, "isSearchON"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    .line 112
    return-void
.end method
