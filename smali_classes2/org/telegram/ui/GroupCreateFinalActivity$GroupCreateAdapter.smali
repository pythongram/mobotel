.class public Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupCreateFinalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCreateAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 471
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 472
    iput-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    .line 473
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_8

    .line 522
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 520
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 518
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 501
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    .line 508
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 509
    .local v0, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 510
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v0, v1, v5, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 514
    .end local v0    # "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_25
    return-void

    .line 503
    :pswitch_26
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    .line 504
    .local v0, "cell":Lorg/telegram/ui/Cells/GroupCreateSectionCell;
    const-string v2, "Members"

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GroupCreateSectionCell;->setText(Ljava/lang/String;)V

    goto :goto_25

    .line 501
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 488
    packed-switch p2, :pswitch_data_1a

    .line 493
    new-instance v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;Z)V

    .line 496
    .local v0, "view":Landroid/view/View;
    :goto_b
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 490
    .end local v0    # "view":Landroid/view/View;
    :pswitch_11
    new-instance v0, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GroupCreateSectionCell;-><init>(Landroid/content/Context;)V

    .line 491
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_b

    .line 488
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 528
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 529
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->recycle()V

    .line 531
    :cond_e
    return-void
.end method
