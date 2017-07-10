.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareDialogsAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentCount:I

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 518
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->context:Landroid/content/Context;

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->fetchDialogs()V

    .line 520
    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    .prologue
    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public fetchDialogs()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 523
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 524
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_122

    .line 525
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 526
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 527
    .local v4, "lower_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v3, v6

    .line 528
    .local v3, "high_id":I
    if-eqz v4, :cond_92

    if-eq v3, v11, :cond_92

    .line 529
    if-lez v4, :cond_96

    .line 530
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    .line 531
    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "hidden_sharealert"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 533
    :cond_8d
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_92
    :goto_92
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 536
    :cond_96
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 537
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_92

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_92

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_bd

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v5, :cond_bd

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v5, :cond_bd

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_92

    .line 538
    :cond_bd
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11b

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    .line 539
    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "hidden_sharealert"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 541
    :cond_11b
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_92

    .line 547
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    :cond_122
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->notifyDataSetChanged()V

    .line 548
    return-void
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 556
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 557
    :cond_a
    const/4 v0, 0x0

    .line 559
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_b
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 576
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 577
    .local v0, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .line 578
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 569
    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    .line 570
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
