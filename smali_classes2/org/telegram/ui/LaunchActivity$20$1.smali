.class Lorg/telegram/ui/LaunchActivity$20$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$20;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$20;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$20;

    .prologue
    .line 2207
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$20$1;->this$1:Lorg/telegram/ui/LaunchActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .registers 11
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .prologue
    const/4 v5, 0x0

    .line 2210
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$20$1;->this$1:Lorg/telegram/ui/LaunchActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$20;->val$waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2211
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2212
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_d

    .line 2214
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_2d
    return-void
.end method
