.class Lorg/telegram/messenger/MessagesStorage$49;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->startTransaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3245
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$49;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3249
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$49;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 3253
    :goto_9
    return-void

    .line 3250
    :catch_a
    move-exception v0

    .line 3251
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
