.class final enum Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
.super Ljava/lang/Enum;
.source "SapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SAP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/sap/SapServer$SAP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field public static final enum DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "CONNECTING_CALL_ONGOING"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 58
    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "CONNECTED_BUSY"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    new-instance v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const-string/jumbo v1, "DISCONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->$VALUES:[Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->$VALUES:[Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-object v0
.end method
