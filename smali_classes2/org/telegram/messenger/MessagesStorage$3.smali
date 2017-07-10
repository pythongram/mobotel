.class Lorg/telegram/messenger/MessagesStorage$3;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$lsv:I

.field final synthetic val$pbytes:[B

.field final synthetic val$sg:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II[B)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$3;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$lsv:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$sg:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 588
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$3;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "UPDATE params SET lsv = ?, sg = ?, pbytes = ? WHERE id = 1"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 589
    .local v2, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$lsv:I

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 590
    const/4 v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$sg:I

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 591
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    if-eqz v4, :cond_22

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    array-length v3, v3

    :cond_22
    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 592
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    if-eqz v3, :cond_2e

    .line 593
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 595
    :cond_2e
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 596
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 597
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 598
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    .line 602
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_3b
    return-void

    .line 599
    :catch_3c
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3b
.end method
