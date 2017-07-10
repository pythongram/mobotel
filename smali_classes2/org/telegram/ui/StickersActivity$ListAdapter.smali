.class Lorg/telegram/ui/StickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 298
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 299
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StickersActivity$ListAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity$ListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .registers 13
    .param p1, "which"    # I
    .param p2, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 318
    if-nez p1, :cond_1a

    .line 319
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v8, :cond_14

    move v4, v5

    :cond_14
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 341
    :cond_19
    :goto_19
    return-void

    .line 320
    :cond_1a
    if-ne p1, v5, :cond_2a

    .line 321
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v4, v6, v8, v7, v5}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_19

    .line 322
    :cond_2a
    if-ne p1, v4, :cond_8a

    .line 324
    :try_start_2c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v4, "android.intent.extra.TEXT"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addstickers/%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "StickersShare"

    const v6, 0x7f070525

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_84} :catch_85

    goto :goto_19

    .line 328
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_85
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8a
    const/4 v4, 0x3

    if-ne p1, v4, :cond_19

    .line 333
    :try_start_8d
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 334
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v4, "label"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addstickers/%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 335
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 336
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "LinkCopied"

    const v6, 0x7f0702e0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_e6} :catch_e8

    goto/16 :goto_19

    .line 337
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_e8
    move-exception v2

    .line 338
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_19
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_2d

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 314
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :goto_2c
    return-wide v2

    .line 311
    :cond_2d
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_61

    .line 312
    :cond_5d
    const-wide/32 v2, -0x80000000

    goto :goto_2c

    .line 314
    :cond_61
    int-to-long v2, p1

    goto :goto_2c
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 494
    :cond_11
    :goto_11
    return v0

    .line 487
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 488
    :cond_2a
    const/4 v0, 0x1

    goto :goto_11

    .line 489
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_46

    .line 490
    :cond_44
    const/4 v0, 0x2

    goto :goto_11

    .line 491
    :cond_46
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 492
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 403
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 404
    .local v0, "type":I
    if-eqz v0, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 19
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 345
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_190

    .line 399
    :cond_7
    :goto_7
    return-void

    .line 347
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 348
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    sub-int v6, p2, v10

    .line 349
    .local v6, "row":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v6, v12, :cond_37

    const/4 v12, 0x1

    :goto_33
    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    goto :goto_7

    :cond_37
    const/4 v12, 0x0

    goto :goto_33

    .line 352
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "row":I
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_92

    .line 353
    const-string v10, "FeaturedStickersInfo"

    const v11, 0x7f070217

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "text":Ljava/lang/String;
    const-string v2, "@stickers"

    .line 355
    .local v2, "botName":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 356
    .local v5, "index":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_87

    .line 358
    :try_start_57
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 359
    .local v8, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    const-string v10, "@stickers"

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lorg/telegram/ui/StickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/lang/String;)V

    .line 365
    .local v7, "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v5

    const/16 v11, 0x12

    invoke-virtual {v8, v7, v5, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 366
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_78} :catch_79

    goto :goto_7

    .line 367
    .end local v7    # "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    .end local v8    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :catch_79
    move-exception v4

    .line 368
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 369
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 372
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_87
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 374
    .end local v2    # "botName":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v9    # "text":Ljava/lang/String;
    :cond_92
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_d0

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    if-nez v10, :cond_bc

    .line 376
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v11, "ArchivedStickersInfo"

    const v12, 0x7f0700a0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 378
    :cond_bc
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v11, "ArchivedMasksInfo"

    const v12, 0x7f07009b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 380
    :cond_d0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksInfoRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 381
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v11, "MasksInfo"

    const v12, 0x7f0702fc

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 385
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_12e

    .line 386
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 387
    .local v3, "count":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v11, "FeaturedStickers"

    const v12, 0x7f070216

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_12b

    const-string v11, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_125
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v11, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_12b
    const-string v11, ""

    goto :goto_125

    .line 388
    .end local v3    # "count":I
    :cond_12e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_16e

    .line 389
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    if-nez v10, :cond_159

    .line 390
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v11, "ArchivedStickers"

    const v12, 0x7f07009c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 392
    :cond_159
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v11, "ArchivedMasks"

    const v12, 0x7f070097

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 394
    :cond_16e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksRow:I
    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 395
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v11, "Masks"

    const v12, 0x7f0702fb

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 345
    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_8
        :pswitch_39
        :pswitch_f0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v3, 0x7f0200d7

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_6a

    .line 479
    :goto_7
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 412
    :pswitch_17
    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;)V

    .line 413
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 414
    check-cast v1, Lorg/telegram/ui/Cells/StickerSetCell;

    new-instance v2, Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 467
    :pswitch_33
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 468
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 471
    :pswitch_46
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 472
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    .line 475
    :pswitch_57
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 410
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_33
        :pswitch_46
        :pswitch_57
    .end packed-switch
.end method

.method public swapElements(II)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 498
    if-eq p1, p2, :cond_8

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/StickersActivity;->needReorder:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/StickersActivity;->access$1502(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 501
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 503
    .local v1, "from":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyItemMoved(II)V

    .line 506
    return-void
.end method
