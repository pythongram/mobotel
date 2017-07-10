.class Lorg/telegram/ui/ActionBar/BaseFragment$2$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BaseFragment$2;

.field final synthetic val$originalAdapter:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment$2;Landroid/widget/ListAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ActionBar/BaseFragment$2;

    .prologue
    .line 365
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->this$1:Lorg/telegram/ui/ActionBar/BaseFragment$2;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 388
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 389
    check-cast v0, Landroid/widget/TextView;

    .line 390
    .local v0, "textView":Landroid/widget/TextView;
    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 391
    return-object v1
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 411
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$2$1;->val$originalAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 419
    return-void
.end method
