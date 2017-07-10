.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;
.super Ljava/lang/Object;
.source "FavEmojisActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v4, 0x7f0700fe

    const v3, 0x7f070092

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 382
    :cond_c
    :goto_c
    return-void

    .line 332
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v2

    if-lt p2, v2, :cond_7c

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$400(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v2

    if-ge p2, v2, :cond_7c

    .line 333
    move v1, p2

    .line 334
    .local v1, "finalPosition":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 337
    const-string v2, "FavStickerRemove"

    const v3, 0x7f0706f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    :goto_46
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    const-string v2, "Cancel"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_c

    .line 339
    :cond_6f
    const-string v2, "FavEmojiRemove"

    const v3, 0x7f0706e9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 355
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "finalPosition":I
    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$800(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v2

    if-ne p2, v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 359
    const-string v2, "FavStickersClearAlert"

    const v3, 0x7f0706f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    :goto_b4
    const-string v2, "Clear"

    const v3, 0x7f070682

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const-string v2, "Cancel"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$3;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 361
    :cond_de
    const-string v2, "FavEmojisClearAlert"

    const v3, 0x7f0706eb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_b4
.end method
