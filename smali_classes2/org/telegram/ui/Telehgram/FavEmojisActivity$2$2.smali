.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;
.super Ljava/lang/Object;
.source "FavEmojisActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    :goto_15
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1102(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)Z

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # invokes: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->updateRows(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)V

    .line 373
    return-void

    .line 368
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_15
.end method
