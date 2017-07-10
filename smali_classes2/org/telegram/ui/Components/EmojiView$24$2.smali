.class Lorg/telegram/ui/Components/EmojiView$24$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$24;->onLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$24;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$24;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$24;

    .prologue
    .line 1167
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const v2, 0x7f070092

    const/4 v3, 0x1

    .line 1170
    if-nez p2, :cond_40

    .line 1171
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1173
    const-string v1, "FavStickerStart"

    const v2, 0x7f0706f3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1174
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1175
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1176
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # setter for: Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->access$3402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1191
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3f
    :goto_3f
    return-void

    .line 1177
    :cond_40
    if-ne p2, v3, :cond_89

    .line 1178
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1179
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1180
    const-string v1, "FavStickersClearAlert"

    const v2, 0x7f0706f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1181
    const-string v1, "ClearButton"

    const v2, 0x7f070178

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$24$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$24$2$1;-><init>(Lorg/telegram/ui/Components/EmojiView$24$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1186
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1187
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_3f

    .line 1188
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_89
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3f

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1189
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onReorderFavorites(Z)V

    goto :goto_3f
.end method
