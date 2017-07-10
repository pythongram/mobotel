.class Lorg/telegram/ui/SessionsActivity$3$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/SessionsActivity$3;

    .prologue
    .line 273
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 276
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/SessionsActivity;->loading:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/SessionsActivity;->access$602(Lorg/telegram/ui/SessionsActivity;Z)Z

    .line 277
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_4e

    .line 278
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    .line 280
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 281
    .local v0, "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3b

    .line 282
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # setter for: Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;
    invoke-static {v3, v0}, Lorg/telegram/ui/SessionsActivity;->access$702(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_authorization;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_21

    .line 284
    :cond_3b
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 287
    .end local v0    # "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # invokes: Lorg/telegram/ui/SessionsActivity;->updateRows()V
    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    .line 289
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_63
    return-void
.end method
