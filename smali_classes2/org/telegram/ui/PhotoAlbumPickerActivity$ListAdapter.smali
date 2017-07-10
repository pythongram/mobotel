.class Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 505
    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 506
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    if-nez v1, :cond_5f

    .line 516
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 517
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 521
    :cond_3a
    :goto_3a
    return v0

    .line 519
    :cond_3b
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 521
    :cond_5f
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_3a
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 590
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v2

    if-ne v2, v0, :cond_14

    :cond_12
    move v0, v1

    .line 596
    :cond_13
    :goto_13
    return v0

    .line 593
    :cond_14
    if-eqz p1, :cond_13

    move v0, v1

    .line 596
    goto :goto_13
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 558
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-nez v4, :cond_98

    .line 559
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    .line 560
    .local v3, "photoPickerAlbumsCell":Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbumsCount(I)V

    .line 561
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v4

    if-ge v0, v4, :cond_95

    .line 563
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_65

    .line 564
    :cond_2e
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v4

    mul-int/2addr v4, p2

    add-int v2, v4, v0

    .line 568
    .local v2, "index":I
    :goto_37
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v4

    if-nez v4, :cond_75

    .line 569
    :cond_47
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 570
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 571
    .local v1, "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    .line 561
    .end local v1    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 566
    .end local v2    # "index":I
    :cond_65
    add-int/lit8 v4, p2, -0x1

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int v2, v4, v0

    .restart local v2    # "index":I
    goto :goto_37

    .line 573
    :cond_71
    invoke-virtual {v3, v0, v6}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_62

    .line 576
    :cond_75
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_91

    .line 577
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 578
    .restart local v1    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_62

    .line 580
    .end local v1    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_91
    invoke-virtual {v3, v0, v6}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_62

    .line 584
    .end local v2    # "index":I
    :cond_95
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->requestLayout()V

    .line 586
    .end local v0    # "a":I
    .end local v3    # "photoPickerAlbumsCell":Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
    :cond_98
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 528
    packed-switch p2, :pswitch_data_30

    .line 542
    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;-><init>(Landroid/content/Context;Z)V

    .line 543
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
    new-instance v2, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;)V

    .line 549
    move-object v1, v0

    .line 553
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
    .local v1, "view":Landroid/view/View;
    :goto_19
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 530
    .end local v1    # "view":Landroid/view/View;
    :pswitch_1f
    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
    new-instance v2, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;)V

    .line 537
    move-object v1, v0

    .line 538
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_19

    .line 528
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
