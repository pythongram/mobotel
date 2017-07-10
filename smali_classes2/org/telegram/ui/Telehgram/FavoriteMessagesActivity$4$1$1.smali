.class Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;
.super Ljava/lang/Object;
.source "FavoriteMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

.field final synthetic val$did:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;I)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;->this$2:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

    iput p2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;->val$did:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 104
    new-instance v0, Lorg/telegram/SQLite/DBHelper;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;->this$2:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "dbHelper":Lorg/telegram/SQLite/DBHelper;
    invoke-virtual {v0}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 107
    :try_start_e
    iget v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;->val$did:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/DBHelper;->deleteFMsByDid(J)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_25

    .line 109
    invoke-virtual {v0}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1$1;->this$2:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->access$000(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->notifyDataSetChanged()V

    .line 112
    return-void

    .line 109
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v1
.end method
