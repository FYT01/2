.class public Lcom/android/bluetooth/map/BluetoothMapAccountItem;
.super Ljava/lang/Object;
.source "BluetoothMapAccountItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAccountItem"

.field private static final V:Z


# instance fields
.field public final mBase_uri:Ljava/lang/String;

.field public final mBase_uri_no_account:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mId:Ljava/lang/String;

.field protected mIsChecked:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private final mUci:Ljava/lang/String;

.field private final mUciPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "appType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p7, "uci"    # Ljava/lang/String;
    .param p8, "uciPrefix"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 50
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "appType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "appType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p6, "uci"    # Ljava/lang/String;
    .param p7, "uciPrefix"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)I
    .locals 4
    .param p1, "other"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    const/4 v3, -0x1

    .line 98
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return v3

    .line 102
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    return v3

    .line 106
    :cond_3
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_4
    return v3

    .line 111
    :cond_5
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong providerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_6
    return v3

    .line 116
    :cond_7
    iget-boolean v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v0, v1, :cond_9

    .line 117
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_8
    return v3

    .line 120
    :cond_9
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 121
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong appType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_a
    return v3

    .line 124
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->compareTo(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    if-ne p0, p1, :cond_0

    .line 143
    return v4

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 145
    return v3

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 147
    return v3

    :cond_2
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 149
    .local v0, "other":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 150
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 151
    return v3

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 153
    return v3

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 155
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 156
    return v3

    .line 157
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 158
    return v3

    .line 159
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 160
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 161
    return v3

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 163
    return v3

    .line 164
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 165
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 166
    return v3

    .line 167
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 168
    return v3

    .line 169
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-nez v1, :cond_b

    .line 170
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v1, :cond_c

    .line 171
    return v3

    .line 172
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 173
    return v3

    .line 174
    :cond_c
    return v4
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 76
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDispName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOrgEmail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getUci()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    return-object v0
.end method

.method public getUciFull()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 91
    return-object v1

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUciPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 129
    const/16 v0, 0x1f

    .line 131
    .local v0, "prime":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 132
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 133
    mul-int/lit8 v4, v1, 0x1f

    .line 134
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    .line 133
    :goto_2
    add-int v1, v4, v2

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    .line 136
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 135
    :goto_3
    add-int v1, v2, v3

    .line 137
    return v1

    .line 131
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 132
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mDisplayName:Ljava/lang/String;

    .line 208
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDispName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "emailId"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mEmailAddress:Ljava/lang/String;

    .line 213
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAccountItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrgEmail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
