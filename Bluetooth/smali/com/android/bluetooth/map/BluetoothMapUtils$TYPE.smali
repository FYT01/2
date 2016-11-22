.class public final enum Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
.super Ljava/lang/Enum;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private static allValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 105
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 106
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "SMS_GSM"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 107
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "SMS_CDMA"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 108
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "MMS"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 109
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 110
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->allValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->allValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->allValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aget-object v0, v0, p0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method
