.class Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HealthChannel"
.end annotation


# instance fields
.field private mChannelFd:Landroid/os/ParcelFileDescriptor;

.field private mChannelId:I

.field private mChannelType:I

.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return p1
.end method

.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p4, "channelType"    # I

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    .line 876
    iput-object p2, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 877
    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    .line 879
    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelType:I

    .line 880
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    .line 874
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$HealthChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p4, "channelType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method
