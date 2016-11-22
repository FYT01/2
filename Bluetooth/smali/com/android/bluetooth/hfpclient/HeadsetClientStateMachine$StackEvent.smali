.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

.field type:I

.field valueInt:I

.field valueInt2:I

.field valueInt3:I

.field valueInt4:I

.field valueString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2657
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    .line 2650
    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2651
    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2652
    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 2653
    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    .line 2654
    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2655
    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2658
    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    .line 2657
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2665
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "StackEvent {type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    const-string/jumbo v1, ", value1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2667
    const-string/jumbo v1, ", value2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2668
    const-string/jumbo v1, ", value3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2669
    const-string/jumbo v1, ", value4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2670
    const-string/jumbo v1, ", string: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    const-string/jumbo v1, ", device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
