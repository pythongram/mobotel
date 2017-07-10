.class Lorg/telegram/ui/Components/EmojiView$29$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$29;->onLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$29;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$29;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$29;

    .prologue
    .line 1258
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1260
    if-nez p2, :cond_4d

    .line 1261
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1262
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1263
    const-string v1, "FavEmojisClearAlert"

    const v2, 0x7f0706eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1264
    const-string v1, "ClearButton"

    const v2, 0x7f070178

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$29$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$29$1$1;-><init>(Lorg/telegram/ui/Components/EmojiView$29$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1269
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1270
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1274
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_4c
    :goto_4c
    return-void

    .line 1271
    :cond_4d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4c

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 1272
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onReorderFavorites(Z)V

    goto :goto_4c
.end method
