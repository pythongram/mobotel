.class Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 497
    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 498
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_26

    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 538
    :cond_26
    :goto_26
    return v1

    .line 535
    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-ne v2, v0, :cond_59

    .line 536
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v0, 0x2

    :cond_42
    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x4

    :goto_54
    add-int v1, v2, v0

    goto :goto_26

    :cond_57
    move v0, v1

    goto :goto_54

    .line 538
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    goto :goto_26
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 666
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v3

    if-ne v3, v1, :cond_53

    .line 667
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 668
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 669
    if-nez p1, :cond_1f

    .line 670
    const/4 v0, 0x5

    .line 703
    :cond_1e
    :goto_1e
    return v0

    .line 671
    :cond_1f
    if-eq p1, v1, :cond_23

    if-ne p1, v2, :cond_25

    .line 672
    :cond_23
    const/4 v0, 0x6

    goto :goto_1e

    .line 673
    :cond_25
    if-eq p1, v0, :cond_1e

    .line 677
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_3c

    .line 678
    const/4 v0, 0x4

    goto :goto_1e

    .line 679
    :cond_3c
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_7d

    move v0, v1

    .line 680
    goto :goto_1e

    .line 683
    :cond_53
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v2, :cond_7d

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 686
    if-eqz p1, :cond_6f

    if-ne p1, v1, :cond_71

    :cond_6f
    move v0, v2

    .line 687
    goto :goto_1e

    .line 688
    :cond_71
    if-ne p1, v2, :cond_7d

    move v0, v1

    .line 689
    goto :goto_1e

    .line 692
    :cond_75
    if-nez p1, :cond_79

    move v0, v2

    .line 693
    goto :goto_1e

    .line 694
    :cond_79
    if-ne p1, v1, :cond_7d

    move v0, v1

    .line 695
    goto :goto_1e

    .line 700
    :cond_7d
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_92

    move v0, v1

    .line 701
    goto :goto_1e

    .line 703
    :cond_92
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 502
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 503
    .local v0, "postion":I
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne v1, v5, :cond_5f

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 506
    if-eqz v0, :cond_23

    if-ne v0, v3, :cond_25

    :cond_23
    move v2, v3

    .line 528
    :cond_24
    :goto_24
    return v2

    .line 508
    :cond_25
    if-eq v0, v5, :cond_24

    .line 528
    :cond_27
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    add-int/2addr v1, v4

    if-eq v0, v1, :cond_b3

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v1, v4, :cond_b3

    :goto_56
    move v2, v3

    goto :goto_24

    .line 512
    :cond_58
    if-nez v0, :cond_5c

    move v2, v3

    .line 513
    goto :goto_24

    .line 514
    :cond_5c
    if-ne v0, v3, :cond_27

    goto :goto_24

    .line 519
    :cond_5f
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    if-ne v0, v1, :cond_81

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v2

    goto :goto_24

    .line 522
    :cond_81
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_24

    .line 524
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x4

    if-ge v0, v1, :cond_27

    .line 525
    if-eq v0, v3, :cond_ad

    if-ne v0, v5, :cond_b1

    :cond_ad
    move v1, v3

    :goto_ae
    move v2, v1

    goto/16 :goto_24

    :cond_b1
    move v1, v2

    goto :goto_ae

    :cond_b3
    move v3, v2

    .line 528
    goto :goto_56
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 578
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_294

    .line 662
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 580
    :pswitch_8
    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    .line 581
    .local v7, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    sub-int v9, p2, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 582
    .local v2, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 583
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_7

    .line 584
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    if-nez v8, :cond_79

    .line 585
    const/4 v10, 0x0

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v8, :cond_6d

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6d

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_62
    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v9, :cond_77

    const v9, 0x7f0201ca

    :goto_69
    invoke-virtual {v7, v6, v10, v8, v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_7

    :cond_6d
    const-string v8, "NumberUnknown"

    const v9, 0x7f0703d3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_62

    :cond_77
    const/4 v9, 0x0

    goto :goto_69

    .line 586
    :cond_79
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b7

    .line 587
    const/4 v5, 0x0

    .line 588
    .local v5, "role":Ljava/lang/String;
    instance-of v8, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v8, :cond_8b

    instance-of v8, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v8, :cond_9b

    .line 589
    :cond_8b
    const-string v8, "ChannelCreator"

    const v9, 0x7f070120

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 595
    :cond_94
    :goto_94
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v5, v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 590
    :cond_9b
    instance-of v8, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    if-eqz v8, :cond_a9

    .line 591
    const-string v8, "ChannelModerator"

    const v9, 0x7f070148

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_94

    .line 592
    :cond_a9
    instance-of v8, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-eqz v8, :cond_94

    .line 593
    const-string v8, "ChannelEditor"

    const v9, 0x7f070126

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_94

    .line 596
    .end local v5    # "role":Ljava/lang/String;
    :cond_b7
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 597
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v8, :cond_ce

    const v8, 0x7f0201ca

    :goto_c9
    invoke-virtual {v7, v6, v9, v10, v8}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    :cond_ce
    const/4 v8, 0x0

    goto :goto_c9

    .line 602
    .end local v2    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :pswitch_d0
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 603
    .local v3, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    if-nez v8, :cond_110

    .line 604
    const-string v8, "%1$s\n\n%2$s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "NoBlockedGroup"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UnblockText"

    const v12, 0x7f07054e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0200d7

    const-string v10, "windowBackgroundGrayShadow"

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 606
    :cond_110
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_167

    .line 607
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 608
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v8

    if-eqz v8, :cond_145

    .line 609
    const-string v8, "MegaAdminsInfo"

    const v9, 0x7f0702ff

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :goto_135
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0200d7

    const-string v10, "windowBackgroundGrayShadow"

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 611
    :cond_145
    const-string v8, "ChannelAdminsInfo"

    const v9, 0x7f070116

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_135

    .line 615
    :cond_152
    const-string v8, ""

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0200d7

    const-string v10, "windowBackgroundGrayShadow"

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 618
    :cond_167
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 619
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v8

    if-nez v8, :cond_17b

    const/4 v8, 0x2

    if-eq p2, v8, :cond_17e

    :cond_17b
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1b0

    :cond_17e
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v8

    if-eqz v8, :cond_1b0

    .line 620
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v8

    if-eqz v8, :cond_1a3

    .line 621
    const-string v8, ""

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 625
    :goto_193
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0200d6

    const-string v10, "windowBackgroundGrayShadow"

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 623
    :cond_1a3
    const-string v8, "ChannelMembersInfo"

    const v9, 0x7f070131

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_193

    .line 627
    :cond_1b0
    const-string v8, ""

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0200d7

    const-string v10, "windowBackgroundGrayShadow"

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 633
    .end local v3    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_1c5
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 634
    .local v0, "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1f5

    .line 635
    if-nez p2, :cond_1e3

    .line 636
    const-string v8, "AddMember"

    const v9, 0x7f07006c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 637
    :cond_1e3
    const/4 v8, 0x1

    if-ne p2, v8, :cond_7

    .line 638
    const-string v8, "ChannelInviteViaLink"

    const v9, 0x7f070128

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 640
    :cond_1f5
    iget-object v8, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 641
    const-string v8, "ChannelAddAdmin"

    const v9, 0x7f07010e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201b4

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 645
    .end local v0    # "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_210
    iget-object v8, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/TextCell;

    const-string v9, "ChannelAddAdmin"

    const v10, 0x7f07010e

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0201b4

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 648
    :pswitch_225
    iget-object v8, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v9, "WhoCanAddMembers"

    const v10, 0x7f0705a9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 651
    :pswitch_237
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/RadioCell;

    .line 652
    .local v4, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 653
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v8, 0x1

    if-ne p2, v8, :cond_270

    .line 654
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 655
    const-string v8, "WhoCanAddMembersAllMembers"

    const v9, 0x7f0705ab

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_26e

    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v8, :cond_26e

    const/4 v8, 0x1

    :goto_268
    const/4 v10, 0x1

    invoke-virtual {v4, v9, v8, v10}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    :cond_26e
    const/4 v8, 0x0

    goto :goto_268

    .line 656
    :cond_270
    const/4 v8, 0x2

    if-ne p2, v8, :cond_7

    .line 657
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 658
    const-string v8, "WhoCanAddMembersAdmins"

    const v9, 0x7f0705aa

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_291

    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v8, :cond_291

    const/4 v8, 0x1

    :goto_28b
    const/4 v10, 0x0

    invoke-virtual {v4, v9, v8, v10}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    :cond_291
    const/4 v8, 0x0

    goto :goto_28b

    .line 578
    nop

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_8
        :pswitch_d0
        :pswitch_1c5
        :pswitch_7
        :pswitch_210
        :pswitch_225
        :pswitch_237
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 544
    packed-switch p2, :pswitch_data_70

    .line 569
    new-instance v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 570
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 573
    :goto_14
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 546
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1a
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 547
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_14

    .line 550
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2c
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 551
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_14

    .line 553
    .end local v0    # "view":Landroid/view/View;
    :pswitch_34
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_14

    .line 557
    .end local v0    # "view":Landroid/view/View;
    :pswitch_45
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 558
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_14

    .line 560
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4d
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 561
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_14

    .line 564
    .end local v0    # "view":Landroid/view/View;
    :pswitch_5e
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 565
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_14

    .line 544
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2c
        :pswitch_34
        :pswitch_45
        :pswitch_4d
        :pswitch_5e
    .end packed-switch
.end method
