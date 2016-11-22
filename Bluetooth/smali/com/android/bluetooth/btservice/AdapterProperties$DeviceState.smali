.class Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceState"
.end annotation


# instance fields
.field private currentState:I

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private profileId:I

.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterProperties;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterProperties;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/AdapterProperties;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profile"    # I
    .param p4, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->device:Landroid/bluetooth/BluetoothDevice;

    .line 80
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->currentState:I

    .line 81
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->profileId:I

    .line 85
    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->device:Landroid/bluetooth/BluetoothDevice;

    .line 86
    iput p3, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->profileId:I

    .line 87
    iput p4, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->currentState:I

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v0, p1, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->device:Landroid/bluetooth/BluetoothDevice;

    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->profileId:I

    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    iget v0, v0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->profileId:I

    if-ne v1, v0, :cond_0

    .line 94
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->currentState:I

    check-cast p1, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/android/bluetooth/btservice/AdapterProperties$DeviceState;->currentState:I

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
