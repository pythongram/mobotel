.class Lorg/telegram/ui/Adapters/MentionsAdapter$5;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$buttonClicked:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$buttonClicked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$buttonClicked:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$400(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    .line 246
    return-void
.end method
