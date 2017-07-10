.class Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 697
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 698
    iput-object p2, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 699
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .line 724
    :goto_18
    return-object v0

    .line 718
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_63

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_63

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    goto :goto_18

    .line 724
    :cond_63
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 708
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 712
    :cond_2f
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 703
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 750
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne v1, v7, :cond_4b

    .line 751
    invoke-virtual {p0, p2}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v6

    .line 752
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 753
    .local v0, "documentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    iget v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    if-eqz v1, :cond_4c

    .line 754
    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget v5, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 759
    :goto_1f
    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 760
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v7

    :goto_48
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 765
    .end local v0    # "documentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .end local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_4b
    :goto_4b
    return-void

    .line 756
    .restart local v0    # "documentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .restart local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_4c
    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, "type":Ljava/lang/String;
    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget-object v4, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1f

    .end local v3    # "type":Ljava/lang/String;
    :cond_6c
    move v1, v8

    .line 760
    goto :goto_48

    .line 762
    :cond_6e
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_7a

    :goto_76
    invoke-virtual {v0, v8, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_4b

    :cond_7a
    move v7, v8

    goto :goto_76
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 735
    packed-switch p2, :pswitch_data_2c

    .line 742
    new-instance v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 737
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 738
    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string v2, "Recent"

    const v3, 0x7f070476

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_a

    .line 735
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
