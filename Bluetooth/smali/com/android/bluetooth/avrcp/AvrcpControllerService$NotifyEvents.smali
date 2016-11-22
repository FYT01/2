.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
.super Ljava/lang/Object;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyEvents"
.end annotation


# instance fields
.field public notify_event_id:B

.field public notify_state:B

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    return-void
.end method
