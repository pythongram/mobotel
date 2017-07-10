.class Lde/jurihock/voicesmith/VoiceChangerAlert$2;
.super Ljava/lang/Object;
.source "VoiceChangerAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/jurihock/voicesmith/VoiceChangerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 153
    iput-object p1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    iput-object p2, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    const/4 v1, 0x0

    iget-object v2, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$2;->val$context:Landroid/content/Context;

    # invokes: Lde/jurihock/voicesmith/VoiceChangerAlert;->onRowClick(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3}, Lde/jurihock/voicesmith/VoiceChangerAlert;->access$300(Lde/jurihock/voicesmith/VoiceChangerAlert;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 157
    return-void
.end method
