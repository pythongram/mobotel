.class Lorg/telegram/ui/PhotoPickerActivity$7;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 409
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 412
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 415
    :cond_10
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 11
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 419
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 420
    .local v0, "firstVisibleItem":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_52

    const/4 v2, 0x0

    .line 421
    .local v2, "visibleItemCount":I
    :goto_e
    if-lez v2, :cond_51

    .line 422
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getItemCount()I

    move-result v1

    .line 423
    .local v1, "totalItemCount":I
    if-eqz v2, :cond_51

    add-int v3, v0, v2

    add-int/lit8 v4, v1, -0x2

    if-le v3, v4, :cond_51

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 424
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->type:I
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$300(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 425
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x36

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$1100(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;II)V

    .line 431
    .end local v1    # "totalItemCount":I
    :cond_51
    :goto_51
    return-void

    .line 420
    .end local v2    # "visibleItemCount":I
    :cond_52
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_e

    .line 426
    .restart local v1    # "totalItemCount":I
    .restart local v2    # "visibleItemCount":I
    :cond_64
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->type:I
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$1200(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v5

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->searchGiphyImages(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$1300(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;I)V

    goto :goto_51
.end method
