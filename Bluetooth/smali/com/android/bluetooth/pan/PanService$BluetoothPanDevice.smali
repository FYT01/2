.class Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPanDevice"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field private mIfaceAddr:Ljava/lang/String;

.field private mLocalRole:I

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return p1
.end method

.method constructor <init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/pan/PanService;
    .param p2, "state"    # I
    .param p3, "ifaceAddr"    # Ljava/lang/String;
    .param p4, "iface"    # Ljava/lang/String;
    .param p5, "localRole"    # I

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    .line 614
    iput-object p3, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    .line 615
    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    .line 616
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    .line 612
    return-void
.end method
