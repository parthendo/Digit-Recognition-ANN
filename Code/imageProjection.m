prompt = 'Enter the name of class e.g 0,1,2 ...\n';
str = input(prompt,'s');
if str == '0'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train0(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '1'
   prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train1(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '2'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train2(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '3'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train3(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '4'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train4(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '5'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train5(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '6'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train6(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '7'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train7(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '8'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train8(x,:);
    image = reshape(im,28,28);
    im1 = image';
    imshow(im1);
elseif str == '9'
    prompt1 = 'Enter the image number\n';
    x = input(prompt1);
    im = train9(x,:);
    image = reshape(im,28,28);
    im1 = image;
    imshow(im1');
end
        