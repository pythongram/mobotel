.class Lorg/telegram/ui/Components/EmojiView$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
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
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .registers 8
    .param p1, "set"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .prologue
    .line 101
    if-nez p1, :cond_3

    .line 123
    :goto_2
    return-void

    .line 105
    :cond_3
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2f

    .line 106
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    .line 113
    .local v1, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :goto_15
    if-eqz v1, :cond_3c

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v0

    .line 118
    .local v0, "position":I
    :goto_21
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3e

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 107
    .end local v0    # "position":I
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_2f
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 108
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    .restart local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    goto :goto_15

    .line 110
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    goto :goto_15

    .line 116
    :cond_3c
    const/4 v0, -0x1

    .restart local v0    # "position":I
    goto :goto_21

    .line 121
    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    goto :goto_2
.end method

.method public sentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 3
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 97
    return-void
.end method
