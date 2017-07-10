.class Lorg/telegram/ui/Telehgram/UpdateActivity$4;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/UpdateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "j"    # J

    .prologue
    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$000(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/Telehgram/a;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$400(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Telehgram/a;->a(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/UpdateModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/UpdateModel;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    # setter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v1, v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$302(Lorg/telegram/ui/Telehgram/UpdateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    # getter for: Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->access$300(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    check-cast p2, Lorg/telegram/ui/Telehgram/UpdateCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lorg/telegram/ui/Telehgram/UpdateCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity$4;->this$0:Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->showUserActionsDialog()V

    .line 174
    :cond_42
    return-void
.end method
