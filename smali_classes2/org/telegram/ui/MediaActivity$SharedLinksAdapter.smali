.class Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedLinksAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1468
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1469
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->mContext:Landroid/content/Context;

    .line 1470
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .registers 5
    .param p1, "section"    # I

    .prologue
    const/4 v2, 0x3

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

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

    add-int/lit8 v0, v0, 0x1

    .line 1492
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x1

    goto :goto_3b
.end method

.method public getItem(II)Ljava/lang/Object;
    .registers 4
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(II)I
    .registers 5
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 1567
    if-nez p2, :cond_17

    .line 1568
    const/4 v0, 0x0

    .line 1573
    :goto_16
    return v0

    .line 1570
    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    .line 1573
    :cond_19
    const/4 v0, 0x2

    goto :goto_16
.end method

.method public getLetter(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionForScrollProgress(F)I
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 1583
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionCount()I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 1484
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_46

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_46

    :cond_45
    move v0, v1

    :cond_46
    add-int/2addr v0, v2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .registers 13
    .param p1, "section"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    .line 1497
    if-nez p2, :cond_a

    .line 1498
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1500
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_63

    .line 1501
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

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

    .line 1502
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

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

    .line 1503
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object v3, p2

    .line 1504
    check-cast v3, Lorg/telegram/ui/Cells/GraySectionCell;

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

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    .line 1506
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_63
    return-object p2
.end method

.method public isEnabled(II)Z
    .registers 4
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 1479
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 16
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1540
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_35

    .line 1541
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1542
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1543
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_e4

    .line 1562
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_35
    :goto_35
    return-void

    .line 1545
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v2    # "name":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1546
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_35

    .line 1550
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :pswitch_5a
    iget-object v3, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1551
    .local v3, "sharedLinkCell":Lorg/telegram/ui/Cells/SharedLinkCell;
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1552
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p2, v4, :cond_8e

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_ce

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v4

    if-eqz v4, :cond_ce

    :cond_8e
    move v4, v6

    :goto_8f
    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1553
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$4700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 1554
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_d0

    move v4, v5

    :goto_b3
    aget-object v4, v7, v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v7

    if-nez v7, :cond_d2

    :goto_c9
    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_35

    :cond_ce
    move v4, v5

    .line 1552
    goto :goto_8f

    :cond_d0
    move v4, v6

    .line 1554
    goto :goto_b3

    :cond_d2
    move v6, v5

    goto :goto_c9

    .line 1556
    :cond_d4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v4

    if-nez v4, :cond_e1

    :goto_dc
    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_35

    :cond_e1
    move v6, v5

    goto :goto_dc

    .line 1543
    nop

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_36
        :pswitch_5a
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1512
    packed-switch p2, :pswitch_data_2c

    .line 1532
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 1535
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 1514
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1515
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a

    .line 1517
    .end local v0    # "view":Landroid/view/View;
    :pswitch_18
    new-instance v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 1518
    check-cast v1, Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_a

    .line 1512
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_18
    .end packed-switch
.end method
