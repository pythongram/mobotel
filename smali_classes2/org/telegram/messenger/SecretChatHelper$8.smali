.class Lorg/telegram/messenger/SecretChatHelper$8;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 1374
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$8;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1374
    check-cast p1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    check-cast p2, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper$8;->compare(Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;)I
    .registers 5
    .param p1, "lhs"    # Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    .param p2, "rhs"    # Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    .prologue
    .line 1377
    iget-object v0, p1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget-object v1, p2, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-le v0, v1, :cond_c

    .line 1378
    const/4 v0, 0x1

    .line 1382
    :goto_b
    return v0

    .line 1379
    :cond_c
    iget-object v0, p1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget-object v1, p2, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-ge v0, v1, :cond_18

    .line 1380
    const/4 v0, -0x1

    goto :goto_b

    .line 1382
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method
