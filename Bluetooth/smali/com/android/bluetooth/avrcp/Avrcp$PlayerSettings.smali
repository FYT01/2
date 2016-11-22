.class Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerSettings"
.end annotation


# instance fields
.field public attr:B

.field public attrIds:[B

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp$PlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    return-void
.end method
