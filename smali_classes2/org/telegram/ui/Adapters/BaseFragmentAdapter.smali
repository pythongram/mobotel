.class public Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseFragmentAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 40
    if-eqz p1, :cond_5

    .line 41
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 43
    :cond_5
    return-void
.end method
