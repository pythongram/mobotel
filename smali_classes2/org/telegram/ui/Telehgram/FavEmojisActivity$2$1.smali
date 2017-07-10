.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;
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

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;I)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iput p2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->val$finalPosition:I

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 348
    :goto_20
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1102(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)Z

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # invokes: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->updateRows(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)V

    .line 351
    return-void

    .line 346
    :cond_38
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->val$finalPosition:I

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2$1;->this$1:Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20
.end method
