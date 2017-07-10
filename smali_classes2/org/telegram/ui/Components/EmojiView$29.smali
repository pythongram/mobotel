.class Lorg/telegram/ui/Components/EmojiView$29;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1253
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(I)Z
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1256
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v4

    if-eqz v4, :cond_3c

    if-nez p1, :cond_3c

    .line 1257
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1258
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v5, "FavEmojisClear"

    const v6, 0x7f0706ea

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "FavEmojisReorder"

    const v5, 0x7f0706ec

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$29$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$29$1;-><init>(Lorg/telegram/ui/Components/EmojiView$29;)V

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1276
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1298
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :goto_3b
    return v2

    .line 1280
    :cond_3c
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1281
    const/4 v1, 0x1

    .line 1285
    .local v1, "z":I
    :goto_45
    if-eq p1, v1, :cond_4b

    move v2, v3

    .line 1286
    goto :goto_3b

    .line 1283
    .end local v1    # "z":I
    :cond_49
    const/4 v1, 0x0

    .restart local v1    # "z":I
    goto :goto_45

    .line 1288
    :cond_4b
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1289
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1290
    const-string v3, "ClearRecentEmoji"

    const v4, 0x7f07017d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1291
    const-string v3, "ClearButton"

    const v4, 0x7f070178

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$29$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$29$2;-><init>(Lorg/telegram/ui/Components/EmojiView$29;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1296
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1297
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_3b
.end method
