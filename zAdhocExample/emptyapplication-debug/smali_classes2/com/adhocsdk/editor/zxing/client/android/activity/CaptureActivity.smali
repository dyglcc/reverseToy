.class public abstract Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/adhocsdk/zxing/y;

.field private cameraManager:Lcom/adhocsdk/zxing/s;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/adhocsdk/zxing/u;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/adhocsdk/zxing/z;

.field private mCropRect:Landroid/graphics/Rect;

.field private scanContainer:Landroid/widget/RelativeLayout;

.field private scanCropView:Landroid/widget/RelativeLayout;

.field private scanLine:Landroid/widget/ImageView;

.field private scanPreview:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Adhoc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Camera error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$1;

    invoke-direct {v2, p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$1;-><init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$2;

    invoke-direct {v1, p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$2;-><init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getCurrentOrientation()I
    .registers 4

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    packed-switch v0, :pswitch_data_2a

    const/16 v0, 0x8

    :goto_1e
    return v0

    :pswitch_1f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_21
    packed-switch v0, :pswitch_data_32

    :pswitch_24
    const/16 v0, 0x9

    goto :goto_1e

    :pswitch_27
    const/4 v0, 0x1

    goto :goto_1e

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private getStatusBarHeight()I
    .registers 3

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_12
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0, p1}, Lcom/adhocsdk/zxing/s;->a(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    if-nez v0, :cond_30

    new-instance v0, Lcom/adhocsdk/zxing/u;

    iget-object v1, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v2, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v3, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adhocsdk/zxing/u;-><init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/adhocsdk/zxing/s;)V

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    :cond_30
    invoke-direct {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->initCrop()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_33} :catch_3e

    goto :goto_19

    :catch_34
    move-exception v0

    sget-object v1, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_19

    :catch_3e
    move-exception v0

    sget-object v1, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_19
.end method

.method private initCrop()V
    .registers 9

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/s;->e()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/s;->e()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    mul-int/2addr v3, v0

    div-int/2addr v3, v6

    mul-int/2addr v2, v1

    div-int/2addr v2, v7

    mul-int/2addr v0, v4

    div-int/2addr v0, v6

    mul-int/2addr v1, v5

    div-int/2addr v1, v7

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/adhocsdk/zxing/s;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract getScanContainer()Landroid/widget/RelativeLayout;
.end method

.method public abstract getScanCropView()Landroid/widget/RelativeLayout;
.end method

.method public abstract getScanLine()Landroid/widget/ImageView;
.end method

.method public abstract getScanPreview()Landroid/view/SurfaceView;
.end method

.method public handleDecode(Lcom/adhocsdk/zxing/m;)V
    .registers 6

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->a()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->beepManager:Lcom/adhocsdk/zxing/y;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/y;->b()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->a()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->beepManager:Lcom/adhocsdk/zxing/y;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/y;->b()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "width"

    iget-object v3, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    iget-object v3, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "result"

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getScanPreview()Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getScanContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getScanCropView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getScanLine()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    new-instance v0, Lcom/adhocsdk/zxing/z;

    invoke-direct {v0, p0}, Lcom/adhocsdk/zxing/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    new-instance v0, Lcom/adhocsdk/zxing/y;

    invoke-direct {v0, p0}, Lcom/adhocsdk/zxing/y;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->beepManager:Lcom/adhocsdk/zxing/y;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->d()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/u;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    :cond_c
    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->b()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->beepManager:Lcom/adhocsdk/zxing/y;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/y;->close()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/s;->b()V

    iget-boolean v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_28
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/adhocsdk/zxing/s;

    invoke-virtual {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->cameraManager:Lcom/adhocsdk/zxing/s;

    iput-object v2, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handler:Lcom/adhocsdk/zxing/u;

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->beepManager:Lcom/adhocsdk/zxing/y;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/y;->a()V

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->inactivityTimer:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->c()V

    iput-object v2, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iput-object v2, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    if-eqz v1, :cond_2d

    invoke-direct {p0, v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :goto_2c
    return-void

    :cond_2d
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_2c
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    if-nez p1, :cond_9

    sget-object v0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    invoke-direct {p0, p1}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_13
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->hasSurface:Z

    return-void
.end method
