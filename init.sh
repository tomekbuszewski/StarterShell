REPO="git@github.com:tomekbuszewski/Starter.git"
REACT="react"
ES6="devel"

DEFAULT_BRANCH=$ES6
DEFAULT_PATH="temp_project"

# Selecting what project will be initialized
echo "What project you want to build?"
select yn in "React" "Bare ES6"; do
  case $yn in
    "React" ) DEFAULT_BRANCH=$REACT; break;;
    "Bare ES6" ) DEFAULT_BRANCH=$ES6; break;;
  esac
done

# Creating path
mkdir $DEFAULT_PATH;

# Cloning git
git clone -b $DEFAULT_BRANCH $REPO $DEFAULT_PATH

# Removing files
cd $DEFAULT_PATH;
rm -rf .git;

# Moving files to a proper directory
mv ./{.[!.],}* ../
cd ../

# Removing temp directory
rm -rf $DEFAULT_PATH;
