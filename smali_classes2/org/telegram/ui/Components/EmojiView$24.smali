.class Lorg/telegram/ui/Components/EmojiView$24;
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
    .line 1131
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

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

    .line 1135
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favTabNum:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favTabNum:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eq p1, v4, :cond_ab

    .line 1136
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt p1, v4, :cond_56

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge p1, v4, :cond_56

    .line 1137
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1138
    .local v1, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v1, :cond_a9

    .line 1139
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 1194
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :goto_49
    return v2

    .line 1142
    .restart local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_4a
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSetShowOptions(Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    goto :goto_49

    .line 1145
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_56
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne p1, v4, :cond_a9

    .line 1146
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1148
    const-string v3, "ClearRecentStickers"

    const v4, 0x7f070685

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1149
    const-string v3, "ClearButton"

    const v4, 0x7f070178

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$24$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$24$1;-><init>(Lorg/telegram/ui/Components/EmojiView$24;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1156
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1157
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_49

    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_a9
    move v2, v3

    .line 1160
    goto :goto_49

    .line 1161
    :cond_ab
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 1162
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # setter for: Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/EmojiView;->access$3402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1163
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FavStickerEnd"

    const v5, 0x7f0706f1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_49

    .line 1166
    :cond_d0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1167
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v5, "FavStickersEdit"

    const v6, 0x7f0706f6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "FavStickersClear"

    const v5, 0x7f0706f4

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v3, 0x2

    const-string v5, "FavStickersReorder"

    const v6, 0x7f0706f7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$24$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$24$2;-><init>(Lorg/telegram/ui/Components/EmojiView$24;)V

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1193
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_49
.end method
