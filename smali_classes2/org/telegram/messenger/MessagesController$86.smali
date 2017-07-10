.class Lorg/telegram/messenger/MessagesController$86;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->generateUpdateMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4975
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4978
    if-nez p2, :cond_b

    .line 4979
    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v2, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 4980
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4982
    :cond_b
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_2e

    .line 4983
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 4985
    .local v0, "update":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4986
    const-string v2, "update"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    .line 4987
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    .line 4988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4989
    .local v1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4990
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$86;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2, v1, v4, v4, v3}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 4992
    .end local v0    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    .end local v1    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_2e
    return-void
.end method
