.class final enum Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
.super Ljava/lang/Enum;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterBit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;


# instance fields
.field public final excludeForV21:Z

.field public final onlyCheckV21:Z

.field public final pos:I

.field public final prop:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 1004
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "FN"

    .line 1005
    const-string/jumbo v4, "FN"

    .line 1004
    const/4 v2, 0x0

    .line 1005
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1004
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 1005
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1006
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v4, "PHOTO"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1007
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "BDAY"

    const-string/jumbo v4, "BDAY"

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1008
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "ADR"

    const-string/jumbo v4, "ADR"

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1009
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v4, "EMAIL"

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1010
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "TITLE"

    const-string/jumbo v4, "TITLE"

    const/4 v2, 0x5

    const/16 v3, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1011
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "ORG"

    const-string/jumbo v4, "ORG"

    const/4 v2, 0x6

    const/16 v3, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1012
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "NOTE"

    const-string/jumbo v4, "NOTE"

    const/4 v2, 0x7

    const/16 v3, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1013
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "URL"

    const-string/jumbo v4, "URL"

    const/16 v2, 0x8

    const/16 v3, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1014
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "NICKNAME"

    const-string/jumbo v4, "NICKNAME"

    const/16 v2, 0x9

    const/16 v3, 0x17

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1015
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string/jumbo v1, "DATETIME"

    const-string/jumbo v4, "X-IRMC-CALL-DATETIME"

    const/16 v2, 0xa

    const/16 v3, 0x1c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1003
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 0
    .param p3, "pos"    # I
    .param p4, "prop"    # Ljava/lang/String;
    .param p5, "onlyCheckV21"    # Z
    .param p6, "excludeForV21"    # Z

    .prologue
    .line 1022
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1023
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    .line 1024
    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->prop:Ljava/lang/String;

    .line 1025
    iput-boolean p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->onlyCheckV21:Z

    .line 1026
    iput-boolean p6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->excludeForV21:Z

    .line 1022
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1003
    const-class v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .locals 1

    .prologue
    .line 1003
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-object v0
.end method
