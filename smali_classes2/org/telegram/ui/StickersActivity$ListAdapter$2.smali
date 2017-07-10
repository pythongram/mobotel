.class Lorg/telegram/ui/StickersActivity$ListAdapter$2;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/StickersActivity$ListAdapter;

    .prologue
    .line 414
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const v9, 0x7f070522

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 417
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v5}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 419
    .local v1, "cell":Lorg/telegram/ui/Cells/StickerSetCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    .line 420
    .local v4, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 424
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v5

    if-nez v5, :cond_90

    .line 425
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v5, :cond_5e

    .line 426
    new-array v3, v7, [I

    aput v6, v3, v6

    .line 427
    .local v3, "options":[I
    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v5, "StickersHide"

    .line 428
    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 456
    .local v2, "items":[Ljava/lang/CharSequence;
    :goto_4a
    new-instance v5, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;

    invoke-direct {v5, p0, v3, v4}, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter$2;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 462
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/StickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 463
    return-void

    .line 431
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "options":[I
    :cond_5e
    new-array v3, v8, [I

    fill-array-data v3, :array_d8

    .line 432
    .restart local v3    # "options":[I
    new-array v2, v8, [Ljava/lang/CharSequence;

    const-string v5, "StickersHide"

    .line 433
    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "StickersRemove"

    const v6, 0x7f070523

    .line 434
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "StickersShare"

    const v6, 0x7f070525

    .line 435
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    const/4 v5, 0x3

    const-string v6, "StickersCopy"

    const v7, 0x7f070521

    .line 436
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto :goto_4a

    .line 440
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "options":[I
    :cond_90
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v5, :cond_a5

    .line 441
    new-array v3, v7, [I

    aput v6, v3, v6

    .line 442
    .restart local v3    # "options":[I
    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v5, "StickersRemove"

    .line 443
    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto :goto_4a

    .line 446
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "options":[I
    :cond_a5
    new-array v3, v8, [I

    fill-array-data v3, :array_e4

    .line 447
    .restart local v3    # "options":[I
    new-array v2, v8, [Ljava/lang/CharSequence;

    const-string v5, "StickersHide"

    .line 448
    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "StickersRemove"

    const v6, 0x7f070523

    .line 449
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "StickersShare"

    const v6, 0x7f070525

    .line 450
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    const/4 v5, 0x3

    const-string v6, "StickersCopy"

    const v7, 0x7f070521

    .line 451
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_4a

    .line 431
    :array_d8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 446
    :array_e4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method
