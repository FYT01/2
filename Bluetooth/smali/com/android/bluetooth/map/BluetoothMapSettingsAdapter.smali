.class public Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothMapSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;,
        Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSettingsAdapter"

.field private static final V:Z


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mCheckAll:Z

.field private mGroupStatus:[I

.field public mInflater:Landroid/view/LayoutInflater;

.field private mMainGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field mPositionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProupList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSlotsLeft:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mGroupStatus:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "group"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->showWarning(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->V:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listView"    # Landroid/widget/ExpandableListView;
    .param p4, "enabledAccountsCounts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/ExpandableListView;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "groupsList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/bluetooth/map/BluetoothMapAccountItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    .line 64
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    .line 73
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mGroupStatus:[I

    .line 76
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    sub-int/2addr v2, p4

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 78
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)V

    invoke-virtual {p2, v2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    .line 89
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mapEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/bluetooth/map/BluetoothMapAccountItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;>;"
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/bluetooth/map/BluetoothMapAccountItem;Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapAccountItem;>;>;"
    :cond_0
    return-void
.end method

.method private getChild(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "group"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private showWarning(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 352
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    return-void
.end method

.method private updateSlotCounter(Z)V
    .locals 6
    .param p1, "isChecked"    # Z

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 329
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 335
    :goto_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    if-gtz v3, :cond_1

    .line 337
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_1
    const/4 v0, 0x0

    .line 345
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 346
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 326
    return-void

    .line 331
    .end local v0    # "duration":I
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    goto :goto_0

    .line 339
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f060069

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 340
    const-string/jumbo v4, " "

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 340
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 97
    .local v0, "item":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    return-object v1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 114
    if-nez p4, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 116
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;

    invoke-direct {v1, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;)V

    .line 117
    .local v1, "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;
    const v2, 0x7f0c0009

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    .line 119
    const v2, 0x7f0c0008

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->title:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v0

    .line 125
    .local v0, "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const-string/jumbo v2, "childs are"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object p4

    .line 122
    .end local v0    # "child":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v1    # "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;

    .restart local v1    # "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 200
    .local v0, "item":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 234
    if-nez p3, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040002

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 236
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;

    invoke-direct {v1, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;)V

    .line 238
    .local v1, "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;
    const v2, 0x7f0c0007

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 237
    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    .line 240
    const v2, 0x7f0c0005

    .line 239
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    .line 242
    const v2, 0x7f0c0006

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    iput-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->title:Landroid/widget/TextView;

    .line 243
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v0

    .line 249
    .local v0, "groupItem":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    return-object p3

    .line 245
    .end local v0    # "groupItem":Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .end local v1    # "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;

    .restart local v1    # "holder":Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 214
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 219
    return-void
.end method

.method public updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 7
    .param p1, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .prologue
    const/4 v6, 0x0

    .line 315
    iget-boolean v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateSlotCounter(Z)V

    .line 316
    const-string/jumbo v3, "BluetoothMapSettingsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating account settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    const-string/jumbo v5, ". Value is:"

    .line 316
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    iget-boolean v5, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 316
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    .local v0, "mResolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Account"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "flag_expose"

    iget-boolean v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string/jumbo v3, "_id"

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    return-void

    .line 321
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
