.class Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPhotoVideoAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1705
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1706
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    .line 1707
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .registers 5
    .param p1, "section"    # I

    .prologue
    const/4 v2, 0x0

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4b

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$4900(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 1729
    :goto_4a
    return v0

    :cond_4b
    const/4 v0, 0x1

    goto :goto_4a
.end method

.method public getItem(II)Ljava/lang/Object;
    .registers 4
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1711
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(II)I
    .registers 5
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1821
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v0

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_18

    .line 1822
    if-nez p2, :cond_16

    .line 1828
    :goto_15
    return v0

    .line 1825
    :cond_16
    const/4 v0, 0x1

    goto :goto_15

    .line 1828
    :cond_18
    const/4 v0, 0x2

    goto :goto_15
.end method

.method public getLetter(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1833
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionForScrollProgress(F)I
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionCount()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1721
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    aget-object v2, v2, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_45

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_45

    :cond_44
    move v0, v1

    :cond_45
    add-int/2addr v0, v2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .registers 13
    .param p1, "section"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1734
    if-nez p2, :cond_13

    .line 1735
    new-instance p2, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;-><init>(Landroid/content/Context;)V

    .line 1736
    .restart local p2    # "view":Landroid/view/View;
    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1738
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_6b

    .line 1739
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1740
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1741
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object v3, p2

    .line 1742
    check-cast v3, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;->setText(Ljava/lang/String;)V

    .line 1744
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_6b
    return-object p2
.end method

.method public isEnabled(II)Z
    .registers 4
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 1716
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 16
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1784
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_34

    .line 1785
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1786
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1787
    .local v4, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    packed-switch v6, :pswitch_data_100

    .line 1817
    .end local v4    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 1789
    .restart local v4    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v5    # "name":Ljava/lang/String;
    :pswitch_35
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1790
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;->setText(Ljava/lang/String;)V

    goto :goto_34

    .line 1794
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :pswitch_5a
    iget-object v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 1795
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->columnsCount:I
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$4900(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItemsCount(I)V

    .line 1796
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_68
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->columnsCount:I
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$4900(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    if-ge v0, v6, :cond_fb

    .line 1797
    add-int/lit8 v6, p2, -0x1

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->columnsCount:I
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$4900(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v2, v6, v0

    .line 1798
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_f6

    .line 1799
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1800
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_e0

    const/4 v6, 0x1

    :goto_8b
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setIsFirst(Z)V

    .line 1801
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v0, v6, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItem(IILorg/telegram/messenger/MessageObject;)V

    .line 1803
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 1804
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_e2

    const/4 v6, 0x0

    :goto_c3
    aget-object v6, v7, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_e4

    const/4 v6, 0x1

    :goto_da
    invoke-virtual {v1, v0, v7, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    .line 1796
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 1800
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_e0
    const/4 v6, 0x0

    goto :goto_8b

    .line 1804
    :cond_e2
    const/4 v6, 0x1

    goto :goto_c3

    :cond_e4
    const/4 v6, 0x0

    goto :goto_da

    .line 1806
    :cond_e6
    const/4 v7, 0x0

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_f4

    const/4 v6, 0x1

    :goto_f0
    invoke-virtual {v1, v0, v7, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_dd

    :cond_f4
    const/4 v6, 0x0

    goto :goto_f0

    .line 1809
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_f6
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItem(IILorg/telegram/messenger/MessageObject;)V

    goto :goto_dd

    .line 1812
    .end local v2    # "index":I
    :cond_fb
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->requestLayout()V

    goto/16 :goto_34

    .line 1787
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_35
        :pswitch_5a
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 1750
    packed-switch p2, :pswitch_data_4e

    .line 1776
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 1779
    .local v1, "view":Landroid/view/View;
    :goto_b
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 1752
    .end local v1    # "view":Landroid/view/View;
    :pswitch_11
    new-instance v1, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;-><init>(Landroid/content/Context;)V

    .line 1753
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_b

    .line 1755
    .end local v1    # "view":Landroid/view/View;
    :pswitch_19
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$5000(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1756
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$5000(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1757
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$5000(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3a
    move-object v0, v1

    .line 1761
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 1762
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setDelegate(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;)V

    goto :goto_b

    .line 1759
    .end local v0    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v1    # "view":Landroid/view/View;
    :cond_46
    new-instance v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_3a

    .line 1750
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method
