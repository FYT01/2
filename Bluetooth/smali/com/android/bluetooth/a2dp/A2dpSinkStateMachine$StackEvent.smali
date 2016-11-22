.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

.field type:I

.field valueInt:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1056
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    .line 1052
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 1053
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1054
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    .line 1057
    iput p2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    .line 1056
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    return-void
.end method
