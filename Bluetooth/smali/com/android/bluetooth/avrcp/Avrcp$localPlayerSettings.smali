.class Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "localPlayerSettings"
.end annotation


# instance fields
.field public eq_value:B

.field public repeat_value:B

.field public scan_value:B

.field public shuffle_value:B

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    const/4 v0, 0x1

    .line 322
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->eq_value:B

    .line 324
    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->repeat_value:B

    .line 325
    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->shuffle_value:B

    .line 326
    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;->scan_value:B

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp$localPlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    return-void
.end method
