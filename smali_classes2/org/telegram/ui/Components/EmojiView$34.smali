.class Lorg/telegram/ui/Components/EmojiView$34;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->onAttachedToWindow()V
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
    .line 2089
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2094
    return-void
.end method
