.class public Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatDialogsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;
    }
.end annotation


# instance fields
.field private ChatDialogRow:I

.field private InvisibleRow:I

.field private NoChatsRow:I

.field private chatId:J

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;J)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "chat_id"    # J

    .prologue
    .line 547
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    .line 549
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    .line 550
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    .line 551
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    .line 552
    iput-wide p3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->chatId:J

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;JLorg/telegram/ui/Components/ChatDialogsView$1;)V
    .registers 7
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/telegram/ui/Components/ChatDialogsView$1;

    .prologue
    .line 540
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    .prologue
    .line 540
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getTitleRes()I

    move-result v0

    return v0
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 578
    :pswitch_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    :goto_f
    return-object v0

    .line 562
    :pswitch_10
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    goto :goto_f

    .line 564
    :pswitch_17
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_f

    .line 566
    :pswitch_1e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_f

    .line 568
    :pswitch_25
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_f

    .line 570
    :pswitch_2c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_f

    .line 572
    :pswitch_33
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_f

    .line 574
    :pswitch_3a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_f

    .line 576
    :pswitch_41
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto :goto_f

    .line 560
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_10
        :pswitch_9
        :pswitch_9
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method

.method private getTitleRes()I
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 649
    const v0, 0x7f070169

    :goto_c
    return v0

    .line 637
    :pswitch_d
    const v0, 0x7f070827

    goto :goto_c

    .line 639
    :pswitch_11
    const v0, 0x7f07071e

    goto :goto_c

    .line 641
    :pswitch_15
    const v0, 0x7f070675

    goto :goto_c

    .line 643
    :pswitch_19
    const v0, 0x7f070667

    goto :goto_c

    .line 645
    :pswitch_1d
    const v0, 0x7f0707e5

    goto :goto_c

    .line 647
    :pswitch_21
    const v0, 0x7f0706fa

    goto :goto_c

    .line 635
    nop

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 556
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 583
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 584
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p1, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_f

    .line 585
    :cond_c
    const-wide/16 v2, 0x0

    .line 587
    :goto_e
    return-wide v2

    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 591
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->chatId:J

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 592
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    .line 597
    :goto_c
    return v0

    .line 594
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 595
    :cond_1c
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    goto :goto_c

    .line 597
    :cond_1f
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    goto :goto_c
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 622
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    if-ne v3, v4, :cond_1c

    .line 623
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 624
    .local v1, "did":I
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    .line 625
    .local v0, "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setTag(Ljava/lang/Object;)V

    .line 626
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setDialog(I)V

    .line 632
    .end local v0    # "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    .end local v1    # "did":I
    :cond_1b
    :goto_1b
    return-void

    .line 627
    :cond_1c
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    if-ne v3, v4, :cond_1b

    .line 628
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 629
    .local v2, "tv":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 630
    const-string v3, "NoChatsYet"

    const v4, 0x7f070354

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "NoChatsYet"

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getTitleRes()I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 601
    const/4 v1, -0x1

    .line 602
    .local v1, "i":I
    const/4 v2, 0x0

    .line 603
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    if-ne p2, v3, :cond_34

    .line 604
    new-instance v2, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    .line 605
    .restart local v2    # "view":Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1200(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    :cond_2e
    :goto_2e
    new-instance v3, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;Landroid/view/View;)V

    return-object v3

    .line 606
    :cond_34
    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    if-ne p2, v3, :cond_68

    .line 607
    new-instance v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 608
    .restart local v2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v3, :cond_66

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 609
    .local v0, "dp":I
    :goto_4e
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-nez v3, :cond_5d

    .line 610
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1200(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 612
    :cond_5d
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    .line 608
    .end local v0    # "dp":I
    :cond_66
    const/4 v0, -0x1

    goto :goto_4e

    .line 613
    :cond_68
    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    if-ne p2, v3, :cond_2e

    .line 614
    new-instance v2, Landroid/view/View;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 615
    .restart local v2    # "view":Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e
.end method
