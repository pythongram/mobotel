.class Lorg/telegram/ui/TelehgramSettingsActivity$5;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 1171
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$5;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1174
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1175
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_36

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_36

    .line 1176
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$5;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1177
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$5;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1179
    :cond_36
    return-void
.end method
