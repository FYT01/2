.class Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdpSearchTracker"
.end annotation


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/sdp/SdpManager;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    .line 172
    return-void
.end method


# virtual methods
.method add(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z
    .locals 1
    .param p1, "inst"    # Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    return-void
.end method

.method getNext()Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    .locals 6
    .param p1, "address"    # [B
    .param p2, "uuidBytes"    # [B

    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "addressString":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 197
    .local v3, "uuid":Landroid/os/ParcelUuid;
    iget-object v4, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "inst$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 198
    .local v1, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 198
    if-eqz v4, :cond_0

    .line 200
    return-object v1

    .line 203
    .end local v1    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method isSearching(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "addressString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "inst$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 209
    .local v1, "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 209
    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->isSearching()Z

    move-result v3

    return v3

    .line 214
    .end local v1    # "inst":Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method remove(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z
    .locals 1
    .param p1, "inst"    # Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
